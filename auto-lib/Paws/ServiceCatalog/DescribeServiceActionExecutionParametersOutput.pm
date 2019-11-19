# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::DescribeServiceActionExecutionParametersOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_ExecutionParameter/;
  has ServiceActionParameters => (is => 'ro', isa => ArrayRef[ServiceCatalog_ExecutionParameter]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ServiceActionParameters' => {
                                              'class' => 'Paws::ServiceCatalog::ExecutionParameter',
                                              'type' => 'ArrayRef[ServiceCatalog_ExecutionParameter]'
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

Paws::ServiceCatalog::DescribeServiceActionExecutionParametersOutput

=head1 ATTRIBUTES


=head2 ServiceActionParameters => ArrayRef[ServiceCatalog_ExecutionParameter]




=head2 _request_id => Str


=cut

1;