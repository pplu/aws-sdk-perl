
package Paws::Proton::ListServices;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListServices');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::ListServicesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::ListServices - Arguments for method ListServices on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListServices on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method ListServices.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListServices.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $ListServicesOutput = $proton->ListServices(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListServicesOutput->NextToken;
    my $Services  = $ListServicesOutput->Services;

    # Returns a L<Paws::Proton::ListServicesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/ListServices>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of services to list.



=head2 NextToken => Str

A token to indicate the location of the next service in the array of
services, after the list of services that was previously requested.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListServices in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

