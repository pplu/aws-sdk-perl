
package Paws::Outposts::GetOutpostInstanceTypes;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has OutpostId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'OutpostId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetOutpostInstanceTypes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/outposts/{OutpostId}/instanceTypes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Outposts::GetOutpostInstanceTypesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::GetOutpostInstanceTypes - Arguments for method GetOutpostInstanceTypes on L<Paws::Outposts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetOutpostInstanceTypes on the
L<AWS Outposts|Paws::Outposts> service. Use the attributes of this class
as arguments to method GetOutpostInstanceTypes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetOutpostInstanceTypes.

=head1 SYNOPSIS

    my $outposts = Paws->service('Outposts');
    my $GetOutpostInstanceTypesOutput = $outposts->GetOutpostInstanceTypes(
      OutpostId  => 'MyOutpostId',
      MaxResults => 1,               # OPTIONAL
      NextToken  => 'MyToken',       # OPTIONAL
    );

    # Results:
    my $InstanceTypes = $GetOutpostInstanceTypesOutput->InstanceTypes;
    my $NextToken     = $GetOutpostInstanceTypesOutput->NextToken;
    my $OutpostArn    = $GetOutpostInstanceTypesOutput->OutpostArn;
    my $OutpostId     = $GetOutpostInstanceTypesOutput->OutpostId;

    # Returns a L<Paws::Outposts::GetOutpostInstanceTypesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/outposts/GetOutpostInstanceTypes>

=head1 ATTRIBUTES


=head2 MaxResults => Int





=head2 NextToken => Str





=head2 B<REQUIRED> OutpostId => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetOutpostInstanceTypes in L<Paws::Outposts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

