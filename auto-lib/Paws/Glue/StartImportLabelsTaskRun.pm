
package Paws::Glue::StartImportLabelsTaskRun;
  use Moose;
  has InputS3Path => (is => 'ro', isa => 'Str', required => 1);
  has ReplaceAllLabels => (is => 'ro', isa => 'Bool');
  has TransformId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartImportLabelsTaskRun');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::StartImportLabelsTaskRunResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::StartImportLabelsTaskRun - Arguments for method StartImportLabelsTaskRun on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartImportLabelsTaskRun on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method StartImportLabelsTaskRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartImportLabelsTaskRun.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $StartImportLabelsTaskRunResponse = $glue->StartImportLabelsTaskRun(
      InputS3Path      => 'MyUriString',
      TransformId      => 'MyHashString',
      ReplaceAllLabels => 1,                # OPTIONAL
    );

    # Results:
    my $TaskRunId = $StartImportLabelsTaskRunResponse->TaskRunId;

    # Returns a L<Paws::Glue::StartImportLabelsTaskRunResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/StartImportLabelsTaskRun>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InputS3Path => Str

The Amazon Simple Storage Service (Amazon S3) path from where you
import the labels.



=head2 ReplaceAllLabels => Bool

Indicates whether to overwrite your existing labels.



=head2 B<REQUIRED> TransformId => Str

The unique identifier of the machine learning transform.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartImportLabelsTaskRun in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

