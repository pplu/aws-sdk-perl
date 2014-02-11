#!/usr/bin/env perl

use strict;
use warnings;

use Data::Printer;
use Aws::SQS;
 
my $sqs = Aws::SQS->new(region => 'eu-west-1');

# CreateQueue doesn't die if the queue alredy exists with the same attributes
my $q = $sqs->CreateQueue(QueueName => 'queue_name');
my ($msgs, $response);

p $q;

#$msgs = $sqs->ReceiveMessage(QueueUrl => $q->QueueUrl,
#                             WaitTimeSeconds => 20,
#                             MaxNumberOfMessages => 5,
#);
#p $msgs;
 
#$response = $sqs->SendMessage(QueueUrl => $q->QueueUrl, MessageBody => 'Hello world!');
#p $response;

$response = $sqs->SendMessageBatch(QueueUrl => $q->QueueUrl,
                                   Entries => [
                                     { Id => 1, MessageBody => 'Hello world' },
                                     { Id => 2, MessageBody => 'Farewell cruel world' },
                                     Aws::SQS::SendMessageBatchRequestEntry->new(Id => 3, MessageBody => 'Hello world from object'),
                                     Aws::SQS::SendMessageBatchRequestEntry->new(Id => 4, MessageBody => 'Farewell cruel world from object'),
                                   ]);
p $response;

$msgs = $sqs->ReceiveMessage(QueueUrl => $q->QueueUrl,
                             WaitTimeSeconds => 20,
                             MaxNumberOfMessages => 5,
);

p $msgs;

foreach my $msg (@{ $msgs->Messages }) {
  p $msg;

  $sqs->DeleteMessage(QueueUrl => $q->QueueUrl, ReceiptHandle => $msg->ReceiptHandle);
}


#$q->DeleteMessage($msg);

#$q->DeleteQueue(QueueUrl => $q->QueueUrl);
