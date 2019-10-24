# Generated from json/callresult_class.tt

package Paws::Shield::ListProtectionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Shield::Types qw/Shield_Protection/;
  has NextToken => (is => 'ro', isa => Str);
  has Protections => (is => 'ro', isa => ArrayRef[Shield_Protection]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Protections' => {
                                  'class' => 'Paws::Shield::Protection',
                                  'type' => 'ArrayRef[Shield_Protection]'
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

Paws::Shield::ListProtectionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If you specify a value for C<MaxResults> and you have more Protections
than the value of MaxResults, AWS Shield Advanced returns a NextToken
value in the response that allows you to list another group of
Protections. For the second and subsequent ListProtections requests,
specify the value of NextToken from the previous response to get
information about another batch of Protections.

AWS WAF might return the list of Protection objects in batches smaller
than the number specified by MaxResults. If there are more Protection
objects to return, AWS WAF will always also return a C<NextToken>.


=head2 Protections => ArrayRef[Shield_Protection]

The array of enabled Protection objects.


=head2 _request_id => Str


=cut

1;