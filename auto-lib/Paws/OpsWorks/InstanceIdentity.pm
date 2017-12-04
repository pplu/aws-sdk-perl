package Paws::OpsWorks::InstanceIdentity;
  use Moose;
  has Document => (is => 'ro', isa => 'Str');
  has Signature => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::InstanceIdentity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorks::InstanceIdentity object:

  $service_obj->Method(Att1 => { Document => $value, ..., Signature => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorks::InstanceIdentity object:

  $result = $service_obj->Method(...);
  $result->Att1->Document

=head1 DESCRIPTION

Contains a description of an Amazon EC2 instance from the Amazon EC2
metadata service. For more information, see Instance Metadata and User
Data (http://docs.aws.amazon.com/sdkfornet/latest/apidocs/Index.html).

=head1 ATTRIBUTES


=head2 Document => Str

  A JSON document that contains the metadata.


=head2 Signature => Str

  A signature that can be used to verify the document's accuracy and
authenticity.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

