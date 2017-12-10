package Paws::DMS::RefreshSchemasStatus;
  use Moose;
  has EndpointArn => (is => 'ro', isa => 'Str');
  has LastFailureMessage => (is => 'ro', isa => 'Str');
  has LastRefreshDate => (is => 'ro', isa => 'Str');
  has ReplicationInstanceArn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::RefreshSchemasStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DMS::RefreshSchemasStatus object:

  $service_obj->Method(Att1 => { EndpointArn => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DMS::RefreshSchemasStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->EndpointArn

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 EndpointArn => Str

  The Amazon Resource Name (ARN) string that uniquely identifies the
endpoint.


=head2 LastFailureMessage => Str

  The last failure message for the schema.


=head2 LastRefreshDate => Str

  The date the schema was last refreshed.


=head2 ReplicationInstanceArn => Str

  The Amazon Resource Name (ARN) of the replication instance.


=head2 Status => Str

  The status of the schema.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

