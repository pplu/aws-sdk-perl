package Paws::ServerlessRepo::ApplicationPolicyStatement;
  use Moose;
  has Actions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'actions', traits => ['NameInRequest'], required => 1);
  has Principals => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'principals', traits => ['NameInRequest'], required => 1);
  has StatementId => (is => 'ro', isa => 'Str', request_name => 'statementId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::ApplicationPolicyStatement

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServerlessRepo::ApplicationPolicyStatement object:

  $service_obj->Method(Att1 => { Actions => $value, ..., StatementId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServerlessRepo::ApplicationPolicyStatement object:

  $result = $service_obj->Method(...);
  $result->Att1->Actions

=head1 DESCRIPTION

Policy statement applied to the application.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Actions => ArrayRef[Str|Undef]

  For the list of actions supported for this operation, see Application
Permissions
(https://docs.aws.amazon.com/serverlessrepo/latest/devguide/access-control-resource-based.html#application-permissions).


=head2 B<REQUIRED> Principals => ArrayRef[Str|Undef]

  An AWS account ID, or * to make the application public.


=head2 StatementId => Str

  A unique ID for the statement.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServerlessRepo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

