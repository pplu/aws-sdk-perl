
package Paws::Forecast::UpdateDatasetGroup;
  use Moose;
  has DatasetArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has DatasetGroupArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDatasetGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Forecast::UpdateDatasetGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::UpdateDatasetGroup - Arguments for method UpdateDatasetGroup on L<Paws::Forecast>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDatasetGroup on the
L<Amazon Forecast Service|Paws::Forecast> service. Use the attributes of this class
as arguments to method UpdateDatasetGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDatasetGroup.

=head1 SYNOPSIS

    my $forecast = Paws->service('Forecast');
    my $UpdateDatasetGroupResponse = $forecast->UpdateDatasetGroup(
      DatasetArns => [
        'MyArn', ...    # max: 256
      ],
      DatasetGroupArn => 'MyArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/forecast/UpdateDatasetGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatasetArns => ArrayRef[Str|Undef]

An array of the Amazon Resource Names (ARNs) of the datasets to add to
the dataset group.



=head2 B<REQUIRED> DatasetGroupArn => Str

The ARN of the dataset group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDatasetGroup in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

