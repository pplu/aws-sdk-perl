
package Paws::Route53::DeleteHostedZone;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', uri_name => 'Id', traits => ['ParamInURI'], required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteHostedZone');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/hostedzone/{Id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::DeleteHostedZoneResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::DeleteHostedZone - Arguments for method DeleteHostedZone on L<Paws::Route53>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteHostedZone on the
L<Amazon Route 53|Paws::Route53> service. Use the attributes of this class
as arguments to method DeleteHostedZone.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteHostedZone.

=head1 SYNOPSIS

    my $route53 = Paws->service('Route53');
    my $DeleteHostedZoneResponse = $route53->DeleteHostedZone(
      Id => 'MyResourceId',

    );

    # Results:
    my $ChangeInfo = $DeleteHostedZoneResponse->ChangeInfo;

    # Returns a L<Paws::Route53::DeleteHostedZoneResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53/DeleteHostedZone>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the hosted zone you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteHostedZone in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

