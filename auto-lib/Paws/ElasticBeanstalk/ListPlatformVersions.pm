
package Paws::ElasticBeanstalk::ListPlatformVersions;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::PlatformFilter]');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPlatformVersions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticBeanstalk::ListPlatformVersionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListPlatformVersionsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::ListPlatformVersions - Arguments for method ListPlatformVersions on L<Paws::ElasticBeanstalk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPlatformVersions on the
L<AWS Elastic Beanstalk|Paws::ElasticBeanstalk> service. Use the attributes of this class
as arguments to method ListPlatformVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPlatformVersions.

=head1 SYNOPSIS

    my $elasticbeanstalk = Paws->service('ElasticBeanstalk');
    my $ListPlatformVersionsResult = $elasticbeanstalk->ListPlatformVersions(
      Filters => [
        {
          Operator => 'MyPlatformFilterOperator',          # OPTIONAL
          Type     => 'MyPlatformFilterType',              # OPTIONAL
          Values   => [ 'MyPlatformFilterValue', ... ],    # OPTIONAL
        },
        ...
      ],                                                   # OPTIONAL
      MaxRecords => 1,                                     # OPTIONAL
      NextToken  => 'MyToken',                             # OPTIONAL
    );

    # Results:
    my $NextToken           = $ListPlatformVersionsResult->NextToken;
    my $PlatformSummaryList = $ListPlatformVersionsResult->PlatformSummaryList;

    # Returns a L<Paws::ElasticBeanstalk::ListPlatformVersionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk/ListPlatformVersions>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::ElasticBeanstalk::PlatformFilter>]

List only the platforms where the platform member value relates to one
of the supplied values.



=head2 MaxRecords => Int

The maximum number of platform values returned in one call.



=head2 NextToken => Str

The starting index into the remaining list of platforms. Use the
C<NextToken> value from a previous C<ListPlatformVersion> call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPlatformVersions in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

