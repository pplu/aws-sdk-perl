
package Paws::Shield::ListAttacks;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Paws::Shield::TimeRange');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has StartTime => (is => 'ro', isa => 'Paws::Shield::TimeRange');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAttacks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Shield::ListAttacksResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Shield::ListAttacks - Arguments for method ListAttacks on L<Paws::Shield>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAttacks on the
L<AWS Shield|Paws::Shield> service. Use the attributes of this class
as arguments to method ListAttacks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAttacks.

=head1 SYNOPSIS

    my $shield = Paws->service('Shield');
    my $ListAttacksResponse = $shield->ListAttacks(
      EndTime => {
        FromInclusive => '1970-01-01T01:00:00',    # OPTIONAL
        ToExclusive   => '1970-01-01T01:00:00',    # OPTIONAL
      },    # OPTIONAL
      MaxResults   => 1,            # OPTIONAL
      NextToken    => 'MyToken',    # OPTIONAL
      ResourceArns => [
        'MyResourceArn', ...        # min: 1, max: 2048
      ],                            # OPTIONAL
      StartTime => {
        FromInclusive => '1970-01-01T01:00:00',    # OPTIONAL
        ToExclusive   => '1970-01-01T01:00:00',    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $AttackSummaries = $ListAttacksResponse->AttackSummaries;
    my $NextToken       = $ListAttacksResponse->NextToken;

    # Returns a L<Paws::Shield::ListAttacksResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/shield/ListAttacks>

=head1 ATTRIBUTES


=head2 EndTime => L<Paws::Shield::TimeRange>

The end of the time period for the attacks. This is a C<timestamp>
type. The sample request above indicates a C<number> type because the
default used by WAF is Unix time in seconds. However any valid
timestamp format
(http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types)
is allowed.



=head2 MaxResults => Int

The maximum number of AttackSummary objects to be returned. If this is
left blank, the first 20 results will be returned.

This is a maximum value; it is possible that AWS WAF will return the
results in smaller batches. That is, the number of AttackSummary
objects returned could be less than C<MaxResults>, even if there are
still more AttackSummary objects yet to return. If there are more
AttackSummary objects to return, AWS WAF will always also return a
C<NextToken>.



=head2 NextToken => Str

The C<ListAttacksRequest.NextMarker> value from a previous call to
C<ListAttacksRequest>. Pass null if this is the first call.



=head2 ResourceArns => ArrayRef[Str|Undef]

The ARN (Amazon Resource Name) of the resource that was attacked. If
this is left blank, all applicable resources for this account will be
included.



=head2 StartTime => L<Paws::Shield::TimeRange>

The start of the time period for the attacks. This is a C<timestamp>
type. The sample request above indicates a C<number> type because the
default used by WAF is Unix time in seconds. However any valid
timestamp format
(http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types)
is allowed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAttacks in L<Paws::Shield>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

