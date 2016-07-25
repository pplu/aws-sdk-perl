package Paws::DirectConnect::Loa;
  use Moose;
  has LoaContent => (is => 'ro', isa => 'Str', xmlname => 'loaContent', request_name => 'loaContent', traits => ['Unwrapped','NameInRequest']);
  has LoaContentType => (is => 'ro', isa => 'Str', xmlname => 'loaContentType', request_name => 'loaContentType', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::Loa

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DirectConnect::Loa object:

  $service_obj->Method(Att1 => { LoaContent => $value, ..., LoaContentType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DirectConnect::Loa object:

  $result = $service_obj->Method(...);
  $result->Att1->LoaContent

=head1 DESCRIPTION

A structure containing the Letter of Authorization - Connecting
Facility Assignment (LOA-CFA) for a connection.

=head1 ATTRIBUTES


=head2 LoaContent => Str

  


=head2 LoaContentType => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

