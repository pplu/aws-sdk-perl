package Paws::AppSync::ApiKey;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has Expires => (is => 'ro', isa => 'Int', request_name => 'expires', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::ApiKey

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppSync::ApiKey object:

  $service_obj->Method(Att1 => { Description => $value, ..., Id => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppSync::ApiKey object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

Describes an API key.

=head1 ATTRIBUTES


=head2 Description => Str

  A description of the purpose of the API key.


=head2 Expires => Int

  The time after which the API key expires. The date is represented as
seconds since the epoch, rounded down to the nearest hour.


=head2 Id => Str

  The API key ID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

