
package Paws::Robomaker::DescribeWorld;
  use Moose;
  has World => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'world', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeWorld');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/describeWorld');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Robomaker::DescribeWorldResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::DescribeWorld - Arguments for method DescribeWorld on L<Paws::Robomaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeWorld on the
L<AWS RoboMaker|Paws::Robomaker> service. Use the attributes of this class
as arguments to method DescribeWorld.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeWorld.

=head1 SYNOPSIS

    my $robomaker = Paws->service('Robomaker');
    my $DescribeWorldResponse = $robomaker->DescribeWorld(
      World => 'MyArn',

    );

    # Results:
    my $Arn           = $DescribeWorldResponse->Arn;
    my $CreatedAt     = $DescribeWorldResponse->CreatedAt;
    my $GenerationJob = $DescribeWorldResponse->GenerationJob;
    my $Tags          = $DescribeWorldResponse->Tags;
    my $Template      = $DescribeWorldResponse->Template;

    # Returns a L<Paws::Robomaker::DescribeWorldResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/robomaker/DescribeWorld>

=head1 ATTRIBUTES


=head2 B<REQUIRED> World => Str

The Amazon Resource Name (arn) of the world you want to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeWorld in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

