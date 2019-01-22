package Paws::CodeDeploy::AutoRollbackConfiguration;
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool', request_name => 'enabled', traits => ['NameInRequest']);
  has Events => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'events', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::AutoRollbackConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::AutoRollbackConfiguration object:

  $service_obj->Method(Att1 => { Enabled => $value, ..., Events => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::AutoRollbackConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Enabled

=head1 DESCRIPTION

Information about a configuration for automatically rolling back to a
previous version of an application revision when a deployment is not
completed successfully.

=head1 ATTRIBUTES


=head2 Enabled => Bool

  Indicates whether a defined automatic rollback configuration is
currently enabled.


=head2 Events => ArrayRef[Str|Undef]

  The event type or types that trigger a rollback.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

