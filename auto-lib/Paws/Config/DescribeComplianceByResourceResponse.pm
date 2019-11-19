# Generated from json/callresult_class.tt

package Paws::Config::DescribeComplianceByResourceResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_ComplianceByResource/;
  has ComplianceByResources => (is => 'ro', isa => ArrayRef[Config_ComplianceByResource]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ComplianceByResources' => {
                                            'class' => 'Paws::Config::ComplianceByResource',
                                            'type' => 'ArrayRef[Config_ComplianceByResource]'
                                          },
               'NextToken' => {
                                'type' => 'Str'
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

Paws::Config::DescribeComplianceByResourceResponse

=head1 ATTRIBUTES


=head2 ComplianceByResources => ArrayRef[Config_ComplianceByResource]

Indicates whether the specified AWS resource complies with all of the
AWS Config rules that evaluate it.


=head2 NextToken => Str

The string that you use in a subsequent request to get the next page of
results in a paginated response.


=head2 _request_id => Str


=cut

1;