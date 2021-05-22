
package Paws::SSM::UnlabelParameterVersion;
  use Moose;
  has Labels => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ParameterVersion => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UnlabelParameterVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::UnlabelParameterVersionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::UnlabelParameterVersion - Arguments for method UnlabelParameterVersion on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UnlabelParameterVersion on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method UnlabelParameterVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UnlabelParameterVersion.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $UnlabelParameterVersionResult = $ssm->UnlabelParameterVersion(
      Labels => [
        'MyParameterLabel', ...    # min: 1, max: 100
      ],
      Name             => 'MyPSParameterName',
      ParameterVersion => 1,

    );

    # Results:
    my $InvalidLabels = $UnlabelParameterVersionResult->InvalidLabels;
    my $RemovedLabels = $UnlabelParameterVersionResult->RemovedLabels;

    # Returns a L<Paws::SSM::UnlabelParameterVersionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/UnlabelParameterVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Labels => ArrayRef[Str|Undef]

One or more labels to delete from the specified parameter version.



=head2 B<REQUIRED> Name => Str

The parameter name of which you want to delete one or more labels.



=head2 B<REQUIRED> ParameterVersion => Int

The specific version of the parameter which you want to delete one or
more labels from. If it is not present, the call will fail.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UnlabelParameterVersion in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

