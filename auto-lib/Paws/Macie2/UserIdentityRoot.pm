# Generated by default/object.tt
package Paws::Macie2::UserIdentityRoot;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', request_name => 'accountId', traits => ['NameInRequest']);
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has PrincipalId => (is => 'ro', isa => 'Str', request_name => 'principalId', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::UserIdentityRoot

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Macie2::UserIdentityRoot object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., PrincipalId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Macie2::UserIdentityRoot object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

Provides information about an Amazon Web Services account and entity
that performed an action on an affected resource. The action was
performed using the credentials for your Amazon Web Services account.

=head1 ATTRIBUTES


=head2 AccountId => Str

The unique identifier for the Amazon Web Services account.


=head2 Arn => Str

The Amazon Resource Name (ARN) of the principal that performed the
action. The last section of the ARN contains the name of the user or
role that performed the action.


=head2 PrincipalId => Str

The unique identifier for the entity that performed the action.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

