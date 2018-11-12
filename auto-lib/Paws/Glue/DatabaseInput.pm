package Paws::Glue::DatabaseInput;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has LocationUri => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Parameters => (is => 'ro', isa => 'Paws::Glue::ParametersMap');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::DatabaseInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::DatabaseInput object:

  $service_obj->Method(Att1 => { Description => $value, ..., Parameters => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::DatabaseInput object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

The structure used to create or update a database.

=head1 ATTRIBUTES


=head2 Description => Str

  Description of the database


=head2 LocationUri => Str

  The location of the database (for example, an HDFS path).


=head2 B<REQUIRED> Name => Str

  Name of the database. For Hive compatibility, this is folded to
lowercase when it is stored.


=head2 Parameters => L<Paws::Glue::ParametersMap>

  Thes key-value pairs define parameters and properties of the database.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

