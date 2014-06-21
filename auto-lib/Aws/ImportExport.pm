
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'Aws::ImportExport::JobType', ['Import','Export',];


package Aws::ImportExport::Job {
  use Moose;
  with ('AWS::API::ResultParser');
  has CreationDate => (is => 'ro', isa => 'Str');
  has IsCanceled => (is => 'ro', isa => 'Bool');
  has JobId => (is => 'ro', isa => 'Str');
  has JobType => (is => 'ro', isa => 'Aws::ImportExport::JobType');
}



package Aws::ImportExport::CancelJob {
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CancelJob');
  has _returns => (isa => 'Aws::ImportExport::CancelJobResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CancelJobResult');  
}
package Aws::ImportExport::CreateJob {
  use Moose;
  has JobType => (is => 'ro', isa => 'Str', required => 1);
  has Manifest => (is => 'ro', isa => 'Str', required => 1);
  has ManifestAddendum => (is => 'ro', isa => 'Str');
  has ValidateOnly => (is => 'ro', isa => 'Bool', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateJob');
  has _returns => (isa => 'Aws::ImportExport::CreateJobResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateJobResult');  
}
package Aws::ImportExport::GetStatus {
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetStatus');
  has _returns => (isa => 'Aws::ImportExport::GetStatusResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetStatusResult');  
}
package Aws::ImportExport::ListJobs {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxJobs => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListJobs');
  has _returns => (isa => 'Aws::ImportExport::ListJobsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListJobsResult');  
}
package Aws::ImportExport::UpdateJob {
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', required => 1);
  has JobType => (is => 'ro', isa => 'Str', required => 1);
  has Manifest => (is => 'ro', isa => 'Str', required => 1);
  has ValidateOnly => (is => 'ro', isa => 'Bool', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateJob');
  has _returns => (isa => 'Aws::ImportExport::UpdateJobResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateJobResult');  
}

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
    my $call = $self->new_with_coercions('Aws::ImportExport::CancelJob', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ImportExport::CancelJobResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreateJob {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::ImportExport::CreateJob', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ImportExport::CreateJobResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub GetStatus {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::ImportExport::GetStatus', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ImportExport::GetStatusResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ListJobs {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::ImportExport::ListJobs', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ImportExport::ListJobsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub UpdateJob {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::ImportExport::UpdateJob', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ImportExport::UpdateJobResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
}
1;
