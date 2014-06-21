
use Aws;
use Data::Printer;

my $iam = Aws->service('IAM')->new( );

#my $policy = $iam->GetAccountPasswordPolicy;
#p $policy;

my $summary = $iam->GetAccountSummary;
p $summary;
my $map = $summary->SummaryMap;
p $map;

#p $iam->ListServerCertificates;

p $iam->ListAccessKeys->AccessKeyMetadata;
