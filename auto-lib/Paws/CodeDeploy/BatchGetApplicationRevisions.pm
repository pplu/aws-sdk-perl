
package Paws::CodeDeploy::BatchGetApplicationRevisions;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationName' , required => 1);
  has Revisions => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::RevisionLocation]', traits => ['NameInRequest'], request_name => 'revisions' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetApplicationRevisions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::BatchGetApplicationRevisionsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::BatchGetApplicationRevisions - Arguments for method BatchGetApplicationRevisions on Paws::CodeDeploy

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetApplicationRevisions on the 
AWS CodeDeploy service. Use the attributes of this class
as arguments to method BatchGetApplicationRevisions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetApplicationRevisions.

As an example:

  $service_obj->BatchGetApplicationRevisions(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

The name of an AWS CodeDeploy application about which to get revision
information.



=head2 B<REQUIRED> Revisions => ArrayRef[L<Paws::CodeDeploy::RevisionLocation>]

Information to get about the application revisions, including type and
location.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetApplicationRevisions in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

