package Paws::SSM::OpsResultAttribute;
  use Moose;
  has TypeName => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::OpsResultAttribute

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::OpsResultAttribute object:

  $service_obj->Method(Att1 => { TypeName => $value, ..., TypeName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::OpsResultAttribute object:

  $result = $service_obj->Method(...);
  $result->Att1->TypeName

=head1 DESCRIPTION

The OpsItem data type to return.

=head1 ATTRIBUTES


=head2 B<REQUIRED> TypeName => Str

  Name of the data type. Valid value: AWS:OpsItem,
AWS:EC2InstanceInformation, AWS:OpsItemTrendline, or
AWS:ComplianceSummary.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

