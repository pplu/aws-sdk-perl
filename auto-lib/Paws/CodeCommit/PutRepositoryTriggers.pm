
package Paws::CodeCommit::PutRepositoryTriggers;
  use Moose;
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);
  has Triggers => (is => 'ro', isa => 'ArrayRef[Paws::CodeCommit::RepositoryTrigger]', traits => ['NameInRequest'], request_name => 'triggers' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutRepositoryTriggers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::PutRepositoryTriggersOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::PutRepositoryTriggers - Arguments for method PutRepositoryTriggers on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutRepositoryTriggers on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method PutRepositoryTriggers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutRepositoryTriggers.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $PutRepositoryTriggersOutput = $codecommit->PutRepositoryTriggers(
      RepositoryName => 'MyRepositoryName',
      Triggers       => [
        {
          DestinationArn => 'MyArn',
          Events         => [
            'all',
            ... # values: all, updateReference, createReference, deleteReference
          ],
          Name     => 'MyRepositoryTriggerName',
          Branches => [
            'MyBranchName', ...    # min: 1, max: 256
          ],                       # OPTIONAL
          CustomData => 'MyRepositoryTriggerCustomData',    # OPTIONAL
        },
        ...
      ],

    );

    # Results:
    my $ConfigurationId = $PutRepositoryTriggersOutput->ConfigurationId;

    # Returns a L<Paws::CodeCommit::PutRepositoryTriggersOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/PutRepositoryTriggers>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RepositoryName => Str

The name of the repository where you want to create or update the
trigger.



=head2 B<REQUIRED> Triggers => ArrayRef[L<Paws::CodeCommit::RepositoryTrigger>]

The JSON block of configuration information for each trigger.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutRepositoryTriggers in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

