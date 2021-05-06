
package Paws::Backup::GetBackupPlanFromJSON;
  use Moose;
  has BackupPlanTemplateJson => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBackupPlanFromJSON');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/backup/template/json/toPlan');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::GetBackupPlanFromJSONOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::GetBackupPlanFromJSON - Arguments for method GetBackupPlanFromJSON on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBackupPlanFromJSON on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method GetBackupPlanFromJSON.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBackupPlanFromJSON.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $GetBackupPlanFromJSONOutput = $backup->GetBackupPlanFromJSON(
      BackupPlanTemplateJson => 'Mystring',

    );

    # Results:
    my $BackupPlan = $GetBackupPlanFromJSONOutput->BackupPlan;

    # Returns a L<Paws::Backup::GetBackupPlanFromJSONOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/GetBackupPlanFromJSON>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BackupPlanTemplateJson => Str

A customer-supplied backup plan document in JSON format.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBackupPlanFromJSON in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

