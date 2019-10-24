# Generated from json/callresult_class.tt

package Paws::DS::DescribeDomainControllersResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DS::Types qw/DS_DomainController/;
  has DomainControllers => (is => 'ro', isa => ArrayRef[DS_DomainController]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DomainControllers' => {
                                        'class' => 'Paws::DS::DomainController',
                                        'type' => 'ArrayRef[DS_DomainController]'
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

Paws::DS::DescribeDomainControllersResult

=head1 ATTRIBUTES


=head2 DomainControllers => ArrayRef[DS_DomainController]

List of the DomainController objects that were retrieved.


=head2 NextToken => Str

If not null, more results are available. Pass this value for the
C<NextToken> parameter in a subsequent call to
DescribeDomainControllers retrieve the next set of items.


=head2 _request_id => Str


=cut

1;