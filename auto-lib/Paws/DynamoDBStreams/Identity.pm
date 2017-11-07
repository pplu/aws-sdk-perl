package Paws::DynamoDBStreams::Identity;
  use Moose;
  has PrincipalId => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDBStreams::Identity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDBStreams::Identity object:

  $service_obj->Method(Att1 => { PrincipalId => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDBStreams::Identity object:

  $result = $service_obj->Method(...);
  $result->Att1->PrincipalId

=head1 DESCRIPTION

Contains details about the type of identity that made the request.

=head1 ATTRIBUTES


=head2 PrincipalId => Str

  A unique identifier for the entity that made the call. For Time To
Live, the principalId is "dynamodb.amazonaws.com".


=head2 Type => Str

  The type of the identity. For Time To Live, the type is "Service".



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDBStreams>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

