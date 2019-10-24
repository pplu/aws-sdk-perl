
package Paws::GuardDuty::GetFindingsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::GuardDuty::Types qw/GuardDuty_Finding/;
  has Findings => (is => 'ro', isa => ArrayRef[GuardDuty_Finding], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Findings' => {
                               'class' => 'Paws::GuardDuty::Finding',
                               'type' => 'ArrayRef[GuardDuty_Finding]'
                             }
             },
  'NameInRequest' => {
                       'Findings' => 'findings'
                     },
  'IsRequired' => {
                    'Findings' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::GetFindingsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Findings => ArrayRef[GuardDuty_Finding]

A list of findings.


=head2 _request_id => Str


=cut

