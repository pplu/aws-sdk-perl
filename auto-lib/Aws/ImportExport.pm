
use AWS::API;


package Aws::ImportExport::CancelJobResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Success => (is => 'ro', isa => 'Bool');

}
package Aws::ImportExport::CreateJobResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AwsShippingAddress => (is => 'ro', isa => 'Str');
  has JobId => (is => 'ro', isa => 'Str');
  has JobType => (is => 'ro', isa => 'Str');
  has Signature => (is => 'ro', isa => 'Str');
  has SignatureFileContents => (is => 'ro', isa => 'Str');
  has WarningMessage => (is => 'ro', isa => 'Str');

}
package Aws::ImportExport::GetStatusResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AwsShippingAddress => (is => 'ro', isa => 'Str');
  has Carrier => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has CurrentManifest => (is => 'ro', isa => 'Str');
  has ErrorCount => (is => 'ro', isa => 'Int');
  has JobId => (is => 'ro', isa => 'Str');
  has JobType => (is => 'ro', isa => 'Str');
  has LocationCode => (is => 'ro', isa => 'Str');
  has LocationMessage => (is => 'ro', isa => 'Str');
  has LogBucket => (is => 'ro', isa => 'Str');
  has LogKey => (is => 'ro', isa => 'Str');
  has ProgressCode => (is => 'ro', isa => 'Str');
  has ProgressMessage => (is => 'ro', isa => 'Str');
  has Signature => (is => 'ro', isa => 'Str');
  has SignatureFileContents => (is => 'ro', isa => 'Str');
  has TrackingNumber => (is => 'ro', isa => 'Str');

}
package Aws::ImportExport::ListJobsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Jobs => (is => 'ro', isa => 'ArrayRef[Aws::ImportExport::Job]');

}
package Aws::ImportExport::UpdateJobResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Success => (is => 'ro', isa => 'Bool');
  has WarningMessage => (is => 'ro', isa => 'Str');

}

package Aws::ImportExport {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'importexport');
  has version => (is => 'ro', isa => 'Str', default => '2010-06-01');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::SingleEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V2Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::QueryCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::XMLResponse');

  
  sub CancelJob {
    my $self = shift;
    return $self->do_call('Aws::ImportExport::CancelJob', @_);
  }
  sub CreateJob {
    my $self = shift;
    return $self->do_call('Aws::ImportExport::CreateJob', @_);
  }
  sub GetStatus {
    my $self = shift;
    return $self->do_call('Aws::ImportExport::GetStatus', @_);
  }
  sub ListJobs {
    my $self = shift;
    return $self->do_call('Aws::ImportExport::ListJobs', @_);
  }
  sub UpdateJob {
    my $self = shift;
    return $self->do_call('Aws::ImportExport::UpdateJob', @_);
  }
}
1;
