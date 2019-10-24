# Generated from json/callresult_class.tt

package Paws::OpsWorks::DescribeServiceErrorsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::OpsWorks::Types qw/OpsWorks_ServiceError/;
  has ServiceErrors => (is => 'ro', isa => ArrayRef[OpsWorks_ServiceError]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ServiceErrors' => {
                                    'class' => 'Paws::OpsWorks::ServiceError',
                                    'type' => 'ArrayRef[OpsWorks_ServiceError]'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribeServiceErrorsResult

=head1 ATTRIBUTES


=head2 ServiceErrors => ArrayRef[OpsWorks_ServiceError]

An array of C<ServiceError> objects that describe the specified service
errors.


=head2 _request_id => Str


=cut

1;