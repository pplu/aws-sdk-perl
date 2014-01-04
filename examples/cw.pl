#!/usr/bin/env perl

use strict;
use warnings;

use Data::Printer;
use AWS::CloudWatch;

my $cw = AWS::CloudWatch->new(
  region => 'eu-west-1'
);

my $result;

$result = $cw->ListMetrics;

MORE:
map {
  my $metric = $_;
  #print $metric->MetricName, "\t", $metric->Namespace, "\n";
  if ($metric->Dimensions){
    print "  ", join " ", map { (
       $metric->MetricName, $metric->Namespace, 
       $_->Name, $_->Value) 
    } @{ $metric->Dimensions };
    print "\n";
  }
} @{ $result->Metrics };

if ($result->NextToken) {
  $result = $cw->ListMetrics(NextToken => $result->NextToken);
  goto MORE;
}

use DateTime;

$result = $cw->GetMetricStatistics(
  MetricName => 'CPUUtilization',
  Namespace => 'AWS/EC2',
  EndTime => DateTime->now->iso8601,
  StartTime => DateTime->now->subtract( days => 5 )->iso8601,
  Statistics => [ 'Average' ],
  Period => 300,
  Unit => 'Percent',
  Dimensions => [
    AWS::CloudWatch::Dimension->new(Name => 'InstanceId', Value => 'i-b25b5af8'),
#    AWS::CloudWatch::Dimension->new(Name => 'InstanceId', Value => 'i-ea4aafa4'),
  ]
);


use Data::Dumper;
print Dumper($result);
#p $result->Datapoints;
