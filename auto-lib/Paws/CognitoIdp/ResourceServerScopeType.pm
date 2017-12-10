package Paws::CognitoIdp::ResourceServerScopeType;
  use Moose;
  has ScopeDescription => (is => 'ro', isa => 'Str', required => 1);
  has ScopeName => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ResourceServerScopeType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::ResourceServerScopeType object:

  $service_obj->Method(Att1 => { ScopeDescription => $value, ..., ScopeName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::ResourceServerScopeType object:

  $result = $service_obj->Method(...);
  $result->Att1->ScopeDescription

=head1 DESCRIPTION

A resource server scope.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ScopeDescription => Str

  A description of the scope.


=head2 B<REQUIRED> ScopeName => Str

  The name of the scope.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

