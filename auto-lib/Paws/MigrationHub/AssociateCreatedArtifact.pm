# Generated from json/callargs_class.tt

package Paws::MigrationHub::AssociateCreatedArtifact;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::MigrationHub::Types qw/MigrationHub_CreatedArtifact/;
  has CreatedArtifact => (is => 'ro', isa => MigrationHub_CreatedArtifact, required => 1, predicate => 1);
  has DryRun => (is => 'ro', isa => Bool, predicate => 1);
  has MigrationTaskName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ProgressUpdateStream => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'AssociateCreatedArtifact');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::MigrationHub::AssociateCreatedArtifactResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DryRun' => {
                             'type' => 'Bool'
                           },
               'CreatedArtifact' => {
                                      'class' => 'Paws::MigrationHub::CreatedArtifact',
                                      'type' => 'MigrationHub_CreatedArtifact'
                                    },
               'ProgressUpdateStream' => {
                                           'type' => 'Str'
                                         },
               'MigrationTaskName' => {
                                        'type' => 'Str'
                                      }
             },
  'IsRequired' => {
                    'CreatedArtifact' => 1,
                    'ProgressUpdateStream' => 1,
                    'MigrationTaskName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHub::AssociateCreatedArtifact - Arguments for method AssociateCreatedArtifact on L<Paws::MigrationHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateCreatedArtifact on the
L<AWS Migration Hub|Paws::MigrationHub> service. Use the attributes of this class
as arguments to method AssociateCreatedArtifact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateCreatedArtifact.

=head1 SYNOPSIS

    my $mgh = Paws->service('MigrationHub');
    my $AssociateCreatedArtifactResult = $mgh->AssociateCreatedArtifact(
      CreatedArtifact => {
        Name        => 'MyCreatedArtifactName',           # min: 1, max: 1600
        Description => 'MyCreatedArtifactDescription',    # max: 500; OPTIONAL
      },
      MigrationTaskName    => 'MyMigrationTaskName',
      ProgressUpdateStream => 'MyProgressUpdateStream',
      DryRun               => 1,                          # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgh/AssociateCreatedArtifact>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedArtifact => MigrationHub_CreatedArtifact

An ARN of the AWS resource related to the migration (e.g., AMI, EC2
instance, RDS instance, etc.)



=head2 DryRun => Bool

Optional boolean flag to indicate whether any effect should take place.
Used to test if the caller has permission to make the call.



=head2 B<REQUIRED> MigrationTaskName => Str

Unique identifier that references the migration task.



=head2 B<REQUIRED> ProgressUpdateStream => Str

The name of the ProgressUpdateStream.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateCreatedArtifact in L<Paws::MigrationHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

