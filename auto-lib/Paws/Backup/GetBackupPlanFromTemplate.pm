
package Paws::Backup::GetBackupPlanFromTemplate;
  use Moose;
  has BackupPlanTemplateId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'templateId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBackupPlanFromTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/backup/template/plans/{templateId}/toPlan');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::GetBackupPlanFromTemplateOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::GetBackupPlanFromTemplate - Arguments for method GetBackupPlanFromTemplate on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBackupPlanFromTemplate on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method GetBackupPlanFromTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBackupPlanFromTemplate.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $GetBackupPlanFromTemplateOutput = $backup->GetBackupPlanFromTemplate(
      BackupPlanTemplateId => 'Mystring',

    );

    # Results:
    my $BackupPlanDocument =
      $GetBackupPlanFromTemplateOutput->BackupPlanDocument;

    # Returns a L<Paws::Backup::GetBackupPlanFromTemplateOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/GetBackupPlanFromTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BackupPlanTemplateId => Str

Uniquely identifies a stored backup plan template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBackupPlanFromTemplate in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

