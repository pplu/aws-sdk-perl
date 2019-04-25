package Paws::SSM::OutputSource;
  use Moose;
  has OutputSourceId => (is => 'ro', isa => 'Str');
  has OutputSourceType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::OutputSource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::OutputSource object:

  $service_obj->Method(Att1 => { OutputSourceId => $value, ..., OutputSourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::OutputSource object:

  $result = $service_obj->Method(...);
  $result->Att1->OutputSourceId

=head1 DESCRIPTION

Information about the source where the association execution details
are stored.

=head1 ATTRIBUTES


=head2 OutputSourceId => Str

  The ID of the output source, for example the URL of an Amazon S3
bucket.


=head2 OutputSourceType => Str

  The type of source where the association execution details are stored,
for example, Amazon S3.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

