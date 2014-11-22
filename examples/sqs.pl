#!/usr/bin/env perl

use strict;
use warnings;

use Data::Printer;
use Paws;
 
my $sqs = Paws->service('SQS')->new(region => 'eu-west-1');

# CreateQueue doesn't die if the queue alredy exists with the same attributes
my $q = $sqs->CreateQueue(QueueName => 'queue_name');
my ($msgs, $response);

p $q;

# You shouldn't be instancing Paws::SQS::SendMessageBatchRequestEntry 
# as we're doing in this example. Look at the "just passing hashes" 
# if messages with Id 1 and 2 for the right thing
use Paws::SQS::SendMessageBatchRequestEntry;

$response = $sqs->SendMessageBatch(QueueUrl => $q->QueueUrl,
                                   Entries => [
                                     { Id => 1, MessageBody => 'Hello world' },
                                     { Id => 2, MessageBody => 'Farewell cruel world' },
                                     Paws::SQS::SendMessageBatchRequestEntry->new(Id => 3, MessageBody => 'Hello world from object'),
                                     Paws::SQS::SendMessageBatchRequestEntry->new(Id => 4, MessageBody => 'Farewell cruel world from object'),
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
