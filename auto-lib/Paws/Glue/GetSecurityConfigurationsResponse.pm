# Generated from json/callresult_class.tt

package Paws::Glue::GetSecurityConfigurationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Glue::Types qw/Glue_SecurityConfiguration/;
  has NextToken => (is => 'ro', isa => Str);
  has SecurityConfigurations => (is => 'ro', isa => ArrayRef[Glue_SecurityConfiguration]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SecurityConfigurations' => {
                                             'class' => 'Paws::Glue::SecurityConfiguration',
                                             'type' => 'ArrayRef[Glue_SecurityConfiguration]'
                                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetSecurityConfigurationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A continuation token, if there are more security configurations to
return.


=head2 SecurityConfigurations => ArrayRef[Glue_SecurityConfiguration]

A list of security configurations.


=head2 _request_id => Str


=cut

1;