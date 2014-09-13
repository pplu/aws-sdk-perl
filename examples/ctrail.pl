
use Data::Dumper;
use Aws;

foreach my $region (
     "us-east-1", "ap-northeast-1", "sa-east-1", 
     "ap-southeast-1", "ap-southeast-2", "us-west-2", 
     "us-west-1", "eu-west-1") {
  my $ctrail = Aws->service('CloudTrail')->new(
    region => $region
  );

  my $list = $ctrail->DescribeTrails;

  use Data::Dumper;
  print Dumper($list);

}
