# Generated from json/callresult_class.tt

package Paws::DeviceFarm::ListOfferingsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_Offering/;
  has NextToken => (is => 'ro', isa => Str);
  has Offerings => (is => 'ro', isa => ArrayRef[DeviceFarm_Offering]);

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
               'Offerings' => {
                                'class' => 'Paws::DeviceFarm::Offering',
                                'type' => 'ArrayRef[DeviceFarm_Offering]'
                              }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Offerings' => 'offerings'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListOfferingsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.


=head2 Offerings => ArrayRef[DeviceFarm_Offering]

A value representing the list offering results.


=head2 _request_id => Str


=cut

1;