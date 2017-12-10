package Paws::RDS::IPRange;
  use Moose;
  has CIDRIP => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::IPRange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::IPRange object:

  $service_obj->Method(Att1 => { CIDRIP => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::IPRange object:

  $result = $service_obj->Method(...);
  $result->Att1->CIDRIP

=head1 DESCRIPTION

This data type is used as a response element in the
DescribeDBSecurityGroups action.

=head1 ATTRIBUTES


=head2 CIDRIP => Str

  Specifies the IP range.


=head2 Status => Str

  Specifies the status of the IP range. Status can be "authorizing",
"authorized", "revoking", and "revoked".



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

