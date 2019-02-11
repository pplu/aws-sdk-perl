package Paws::XRay::ResourceARNDetail;
  use Moose;
  has ARN => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::ResourceARNDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::XRay::ResourceARNDetail object:

  $service_obj->Method(Att1 => { ARN => $value, ..., ARN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::XRay::ResourceARNDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->ARN

=head1 DESCRIPTION

A list of resources ARNs corresponding to the segments in a trace.

=head1 ATTRIBUTES


=head2 ARN => Str

  The ARN of a corresponding resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

