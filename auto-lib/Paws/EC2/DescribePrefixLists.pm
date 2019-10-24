
package Paws::EC2::DescribePrefixLists;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef Int Undef/;
  use Paws::EC2::Types qw/EC2_Filter/;
  has DryRun => (is => 'ro', isa => Bool, predicate => 1);
  has Filters => (is => 'ro', isa => ArrayRef[EC2_Filter], predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has PrefixListIds => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribePrefixLists');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EC2::DescribePrefixListsResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DryRun' => {
                             'type' => 'Bool'
                           },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Filters' => {
                              'class' => 'Paws::EC2::Filter',
                              'type' => 'ArrayRef[EC2_Filter]'
                            },
               'PrefixListIds' => {
                                    'type' => 'ArrayRef[Str|Undef]'
                                  },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             },
  'NameInRequest' => {
                       'Filters' => 'Filter',
                       'PrefixListIds' => 'PrefixListId'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribePrefixLists - Arguments for method DescribePrefixLists on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribePrefixLists on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribePrefixLists.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribePrefixLists.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribePrefixListsResult = $ec2->DescribePrefixLists(
      DryRun  => 1,    # OPTIONAL
      Filters => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],    # OPTIONAL
        },
        ...
      ],                                    # OPTIONAL
      MaxResults    => 1,                   # OPTIONAL
      NextToken     => 'MyString',          # OPTIONAL
      PrefixListIds => [ 'MyString', ... ], # OPTIONAL
    );

    # Results:
    my $NextToken   = $DescribePrefixListsResult->NextToken;
    my $PrefixLists = $DescribePrefixListsResult->PrefixLists;

    # Returns a L<Paws::EC2::DescribePrefixListsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribePrefixLists>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[EC2_Filter]

One or more filters.

=over

=item *

C<prefix-list-id>: The ID of a prefix list.

=item *

C<prefix-list-name>: The name of a prefix list.

=back




=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.



=head2 NextToken => Str

The token for the next page of results.



=head2 PrefixListIds => ArrayRef[Str|Undef]

One or more prefix list IDs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribePrefixLists in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

