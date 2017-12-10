package Paws::MediaConvert::Deinterlacer;
  use Moose;
  has Algorithm => (is => 'ro', isa => 'Str', request_name => 'algorithm', traits => ['NameInRequest']);
  has Control => (is => 'ro', isa => 'Str', request_name => 'control', traits => ['NameInRequest']);
  has Mode => (is => 'ro', isa => 'Str', request_name => 'mode', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::Deinterlacer

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::Deinterlacer object:

  $service_obj->Method(Att1 => { Algorithm => $value, ..., Mode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::Deinterlacer object:

  $result = $service_obj->Method(...);
  $result->Att1->Algorithm

=head1 DESCRIPTION

Settings for deinterlacer

=head1 ATTRIBUTES


=head2 Algorithm => Str

  


=head2 Control => Str

  


=head2 Mode => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

