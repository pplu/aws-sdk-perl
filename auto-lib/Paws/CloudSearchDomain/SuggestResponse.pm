
package Paws::CloudSearchDomain::SuggestResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudSearchDomain::Types qw/CloudSearchDomain_SuggestModel CloudSearchDomain_SuggestStatus/;
  has Status => (is => 'ro', isa => CloudSearchDomain_SuggestStatus);
  has Suggest => (is => 'ro', isa => CloudSearchDomain_SuggestModel);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Suggest' => {
                              'class' => 'Paws::CloudSearchDomain::SuggestModel',
                              'type' => 'CloudSearchDomain_SuggestModel'
                            },
               'Status' => {
                             'class' => 'Paws::CloudSearchDomain::SuggestStatus',
                             'type' => 'CloudSearchDomain_SuggestStatus'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Suggest' => 'suggest',
                       'Status' => 'status'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearchDomain::SuggestResponse

=head1 ATTRIBUTES


=head2 Status => CloudSearchDomain_SuggestStatus

The status of a C<SuggestRequest>. Contains the resource ID (C<rid>)
and how long it took to process the request (C<timems>).


=head2 Suggest => CloudSearchDomain_SuggestModel

Container for the matching search suggestion information.


=head2 _request_id => Str


=cut

