package Paws::RDSData::UpdateResult;
  use Moose;
  has GeneratedFields => (is => 'ro', isa => 'ArrayRef[Paws::RDSData::Field]', request_name => 'generatedFields', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDSData::UpdateResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDSData::UpdateResult object:

  $service_obj->Method(Att1 => { GeneratedFields => $value, ..., GeneratedFields => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDSData::UpdateResult object:

  $result = $service_obj->Method(...);
  $result->Att1->GeneratedFields

=head1 DESCRIPTION

The response elements represent the results of an update.

=head1 ATTRIBUTES


=head2 GeneratedFields => ArrayRef[L<Paws::RDSData::Field>]

  Values for fields generated during the request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDSData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

