
package Paws::Proton::UpdateService;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has Spec => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'spec' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateService');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::UpdateServiceOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::UpdateService - Arguments for method UpdateService on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateService on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method UpdateService.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateService.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $UpdateServiceOutput = $proton->UpdateService(
      Name        => 'MyResourceName',
      Description => 'MyDescription',     # OPTIONAL
      Spec        => 'MySpecContents',    # OPTIONAL
    );

    # Results:
    my $Service = $UpdateServiceOutput->Service;

    # Returns a L<Paws::Proton::UpdateServiceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/UpdateService>

=head1 ATTRIBUTES


=head2 Description => Str

The edited service description.



=head2 B<REQUIRED> Name => Str

The name of the service to edit.



=head2 Spec => Str

Lists the service instances to add and the existing service instances
to remain. Omit the existing service instances to delete from the list.
I<Don't> include edits to the existing service instances or pipeline.
For more information, see I<Edit a service> in the AWS Proton
Administration Guide
(https://docs.aws.amazon.com/proton/latest/adminguide/ag-svc-update.html)
or the AWS Proton User Guide
(https://docs.aws.amazon.com/proton/latest/userguide/ug-svc-update.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateService in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

