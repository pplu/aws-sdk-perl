# Generated from json/callresult_class.tt

package Paws::Support::DescribeCommunicationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Support::Types qw/Support_Communication/;
  has Communications => (is => 'ro', isa => ArrayRef[Support_Communication]);
  has NextToken => (is => 'ro', isa => Str);

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
               'Communications' => {
                                     'class' => 'Paws::Support::Communication',
                                     'type' => 'ArrayRef[Support_Communication]'
                                   }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Communications' => 'communications'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Support::DescribeCommunicationsResponse

=head1 ATTRIBUTES


=head2 Communications => ArrayRef[Support_Communication]

The communications for the case.


=head2 NextToken => Str

A resumption point for pagination.


=head2 _request_id => Str


=cut

1;