
use Paws;
use Data::Printer;

my $iam = Paws->service('IAM');

#my $policy = $iam->GetAccountPasswordPolicy;
#p $policy;

my $summary = $iam->GetAccountSummary;
p $summary;
my $map = $summary->SummaryMap;
p $map;

#p $iam->ListServerCertificates;

p $iam->ListAccessKeys->AccessKeyMetadata;
