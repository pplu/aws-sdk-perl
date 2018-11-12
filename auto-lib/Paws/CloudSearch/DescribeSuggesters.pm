
package Paws::CloudSearch::DescribeSuggesters;
  use Moose;
  has Deployed => (is => 'ro', isa => 'Bool');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has SuggesterNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSuggesters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudSearch::DescribeSuggestersResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeSuggestersResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::DescribeSuggesters - Arguments for method DescribeSuggesters on L<Paws::CloudSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSuggesters on the
L<Amazon CloudSearch|Paws::CloudSearch> service. Use the attributes of this class
as arguments to method DescribeSuggesters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSuggesters.

=head1 SYNOPSIS

    my $cloudsearch = Paws->service('CloudSearch');
    my $DescribeSuggestersResponse = $cloudsearch->DescribeSuggesters(
      DomainName     => 'MyDomainName',
      Deployed       => 1,                # OPTIONAL
      SuggesterNames => [
        'MyStandardName', ...             # min: 1, max: 64
      ],                                  # OPTIONAL
    );

    # Results:
    my $Suggesters = $DescribeSuggestersResponse->Suggesters;

    # Returns a L<Paws::CloudSearch::DescribeSuggestersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudsearch/DescribeSuggesters>

=head1 ATTRIBUTES


=head2 Deployed => Bool

Whether to display the deployed configuration (C<true>) or include any
pending changes (C<false>). Defaults to C<false>.



=head2 B<REQUIRED> DomainName => Str

The name of the domain you want to describe.



=head2 SuggesterNames => ArrayRef[Str|Undef]

The suggesters you want to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSuggesters in L<Paws::CloudSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

