<?php
if (isset($_GET['reference'])) {
    $reference = $_GET['reference'];

    // Verify the transaction
    $url = 'https://api.paystack.co/transaction/verify/' . $reference;

    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_HTTPHEADER, ['Authorization: sk_live_1a232c3ba378f15dcca8205870f106b94bcbeff7']);
    $response = curl_exec($ch);
    curl_close($ch);

    $result = json_decode($response, true);

    if ($result['status']) {
        // Transaction was successful
        echo 'Transaction verified successfully.';
        // Perform additional post-verification actions here, e.g., save transaction details to the database


    } else {
        // Transaction verification failed
        echo 'Transaction verification failed.';
    }
} else {
    echo 'No reference supplied';
}
?>
