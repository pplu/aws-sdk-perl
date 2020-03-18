package Paws::Kendra::AclConfiguration;
  use Moose;
  has AllowedGroupsColumnName => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::AclConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kendra::AclConfiguration object:

  $service_obj->Method(Att1 => { AllowedGroupsColumnName => $value, ..., AllowedGroupsColumnName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kendra::AclConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowedGroupsColumnName

=head1 DESCRIPTION

Provides information about the column that should be used for filtering
the query response by groups.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AllowedGroupsColumnName => Str

  A list of groups, separated by semi-colons, that filters a query
response based on user context. The document is only returned to users
that are in one of the groups specified in the C<UserContext> field of
the Query operation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

