
package Paws::GlobalAccelerator::ListListeners;
  use Moose;
  has AcceleratorArn => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListListeners');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlobalAccelerator::ListListenersResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::ListListeners - Arguments for method ListListeners on L<Paws::GlobalAccelerator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListListeners on the
L<AWS Global Accelerator|Paws::GlobalAccelerator> service. Use the attributes of this class
as arguments to method ListListeners.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListListeners.

=head1 SYNOPSIS

    my $globalaccelerator = Paws->service('GlobalAccelerator');
    my $ListListenersResponse = $globalaccelerator->ListListeners(
      AcceleratorArn => 'MyGenericString',
      MaxResults     => 1,                    # OPTIONAL
      NextToken      => 'MyGenericString',    # OPTIONAL
    );

    # Results:
    my $Listeners = $ListListenersResponse->Listeners;
    my $NextToken = $ListListenersResponse->NextToken;

    # Returns a L<Paws::GlobalAccelerator::ListListenersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/globalaccelerator/ListListeners>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AcceleratorArn => Str

The Amazon Resource Name (ARN) of the accelerator for which you want to
list listener objects.



=head2 MaxResults => Int

The number of listener objects that you want to return with this call.
The default value is 10.



=head2 NextToken => Str

The token for the next set of results. You receive this token from a
previous call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListListeners in L<Paws::GlobalAccelerator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

