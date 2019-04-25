
package Paws::Route53::CreateTrafficPolicyVersion;
  use Moose;
  has Comment => (is => 'ro', isa => 'Str');
  has Document => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', uri_name => 'Id', traits => ['ParamInURI'], required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTrafficPolicyVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/trafficpolicy/{Id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::CreateTrafficPolicyVersionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::CreateTrafficPolicyVersion - Arguments for method CreateTrafficPolicyVersion on L<Paws::Route53>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTrafficPolicyVersion on the
L<Amazon Route 53|Paws::Route53> service. Use the attributes of this class
as arguments to method CreateTrafficPolicyVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTrafficPolicyVersion.

=head1 SYNOPSIS

    my $route53 = Paws->service('Route53');
    my $CreateTrafficPolicyVersionResponse =
      $route53->CreateTrafficPolicyVersion(
      Document => 'MyTrafficPolicyDocument',
      Id       => 'MyTrafficPolicyId',
      Comment  => 'MyTrafficPolicyComment',    # OPTIONAL
      );

    # Results:
    my $Location      = $CreateTrafficPolicyVersionResponse->Location;
    my $TrafficPolicy = $CreateTrafficPolicyVersionResponse->TrafficPolicy;

    # Returns a L<Paws::Route53::CreateTrafficPolicyVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53/CreateTrafficPolicyVersion>

=head1 ATTRIBUTES


=head2 Comment => Str

The comment that you specified in the C<CreateTrafficPolicyVersion>
request, if any.



=head2 B<REQUIRED> Document => Str

The definition of this version of the traffic policy, in JSON format.
You specified the JSON in the C<CreateTrafficPolicyVersion> request.
For more information about the JSON format, see CreateTrafficPolicy.



=head2 B<REQUIRED> Id => Str

The ID of the traffic policy for which you want to create a new
version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTrafficPolicyVersion in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

