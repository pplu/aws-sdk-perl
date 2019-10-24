# Generated from callresult_class.tt

package Paws::IAM::ListAccountAliasesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Bool/;
  use Paws::IAM::Types qw//;
  has AccountAliases => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);
  has IsTruncated => (is => 'ro', isa => Bool);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'IsTruncated' => {
                                  'type' => 'Bool'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           },
               'AccountAliases' => {
                                     'type' => 'ArrayRef[Str|Undef]'
                                   }
             },
  'IsRequired' => {
                    'AccountAliases' => 1
                  }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::ListAccountAliasesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountAliases => ArrayRef[Str|Undef]

A list of aliases associated with the account. AWS supports only one
alias per account.


=head2 IsTruncated => Bool

A flag that indicates whether there are more items to return. If your
results were truncated, you can make a subsequent pagination request
using the C<Marker> request parameter to retrieve more items. Note that
IAM might return fewer than the C<MaxItems> number of results even when
there are more results available. We recommend that you check
C<IsTruncated> after every call to ensure that you receive all your
results.


=head2 Marker => Str

When C<IsTruncated> is C<true>, this element is present and contains
the value to use for the C<Marker> parameter in a subsequent pagination
request.


=head2 _request_id => Str


=cut

