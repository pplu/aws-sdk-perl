
package Paws::Macie2::CreateFindingsFilter;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'action', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has FindingCriteria => (is => 'ro', isa => 'Paws::Macie2::FindingCriteria', traits => ['NameInRequest'], request_name => 'findingCriteria', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Position => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'position');
  has Tags => (is => 'ro', isa => 'Paws::Macie2::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFindingsFilter');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/findingsfilters');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::CreateFindingsFilterResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::CreateFindingsFilter - Arguments for method CreateFindingsFilter on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFindingsFilter on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method CreateFindingsFilter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFindingsFilter.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $CreateFindingsFilterResponse = $macie2->CreateFindingsFilter(
      Action          => 'ARCHIVE',
      FindingCriteria => {
        Criterion => {
          'My__string' => {
            Eq           => [ 'My__string', ... ],    # OPTIONAL
            EqExactMatch => [ 'My__string', ... ],    # OPTIONAL
            Gt           => 1,                        # OPTIONAL
            Gte          => 1,                        # OPTIONAL
            Lt           => 1,                        # OPTIONAL
            Lte          => 1,                        # OPTIONAL
            Neq          => [ 'My__string', ... ],    # OPTIONAL
          },
        },    # OPTIONAL
      },
      Name        => 'My__string',
      ClientToken => 'My__string',                         # OPTIONAL
      Description => 'My__string',                         # OPTIONAL
      Position    => 1,                                    # OPTIONAL
      Tags        => { 'My__string' => 'My__string', },    # OPTIONAL
    );

    # Results:
    my $Arn = $CreateFindingsFilterResponse->Arn;
    my $Id  = $CreateFindingsFilterResponse->Id;

    # Returns a L<Paws::Macie2::CreateFindingsFilterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/CreateFindingsFilter>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => Str

The action to perform on findings that meet the filter criteria
(findingCriteria). Valid values are: ARCHIVE, suppress (automatically
archive) the findings; and, NOOP, don't perform any action on the
findings.

Valid values are: C<"ARCHIVE">, C<"NOOP">

=head2 ClientToken => Str

A unique, case-sensitive token that you provide to ensure the
idempotency of the request.



=head2 Description => Str

A custom description of the filter. The description can contain as many
as 512 characters.

We strongly recommend that you avoid including any sensitive data in
the description of a filter. Other users of your account might be able
to see the filter's description, depending on the actions that they're
allowed to perform in Amazon Macie.



=head2 B<REQUIRED> FindingCriteria => L<Paws::Macie2::FindingCriteria>

The criteria to use to filter findings.



=head2 B<REQUIRED> Name => Str

A custom name for the filter. The name must contain at least 3
characters and can contain as many as 64 characters.

We strongly recommend that you avoid including any sensitive data in
the name of a filter. Other users of your account might be able to see
the filter's name, depending on the actions that they're allowed to
perform in Amazon Macie.



=head2 Position => Int

The position of the filter in the list of saved filters on the Amazon
Macie console. This value also determines the order in which the filter
is applied to findings, relative to other filters that are also applied
to the findings.



=head2 Tags => L<Paws::Macie2::TagMap>

A map of key-value pairs that specifies the tags to associate with the
filter.

A findings filter can have a maximum of 50 tags. Each tag consists of a
tag key and an associated tag value. The maximum length of a tag key is
128 characters. The maximum length of a tag value is 256 characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFindingsFilter in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

