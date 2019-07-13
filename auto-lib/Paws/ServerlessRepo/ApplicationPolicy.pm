package Paws::ServerlessRepo::ApplicationPolicy;
  use Moose;
  has Statements => (is => 'ro', isa => 'ArrayRef[Paws::ServerlessRepo::ApplicationPolicyStatement]', request_name => 'statements', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::ApplicationPolicy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServerlessRepo::ApplicationPolicy object:

  $service_obj->Method(Att1 => { Statements => $value, ..., Statements => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServerlessRepo::ApplicationPolicy object:

  $result = $service_obj->Method(...);
  $result->Att1->Statements

=head1 DESCRIPTION

Policy statements applied to the application.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Statements => ArrayRef[L<Paws::ServerlessRepo::ApplicationPolicyStatement>]

  An array of policy statements applied to the application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServerlessRepo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

