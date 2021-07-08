
package Paws::ES::DescribeDomainAutoTunes;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDomainAutoTunes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-01-01/es/domain/{DomainName}/autoTunes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ES::DescribeDomainAutoTunesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::DescribeDomainAutoTunes - Arguments for method DescribeDomainAutoTunes on L<Paws::ES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDomainAutoTunes on the
L<Amazon Elasticsearch Service|Paws::ES> service. Use the attributes of this class
as arguments to method DescribeDomainAutoTunes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDomainAutoTunes.

=head1 SYNOPSIS

    my $es = Paws->service('ES');
    my $DescribeDomainAutoTunesResponse = $es->DescribeDomainAutoTunes(
      DomainName => 'MyDomainName',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $AutoTunes = $DescribeDomainAutoTunesResponse->AutoTunes;
    my $NextToken = $DescribeDomainAutoTunesResponse->NextToken;

    # Returns a L<Paws::ES::DescribeDomainAutoTunesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/es/DescribeDomainAutoTunes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

Specifies the domain name for which you want Auto-Tune action details.



=head2 MaxResults => Int

Set this value to limit the number of results returned. If not
specified, defaults to 100.



=head2 NextToken => Str

NextToken is sent in case the earlier API call results contain the
NextToken. It is used for pagination.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDomainAutoTunes in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

