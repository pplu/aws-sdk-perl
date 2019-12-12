package Paws::Quicksight::RedshiftParameters;
  use Moose;
  has ClusterId => (is => 'ro', isa => 'Str');
  has Database => (is => 'ro', isa => 'Str', required => 1);
  has Host => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::RedshiftParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Quicksight::RedshiftParameters object:

  $service_obj->Method(Att1 => { ClusterId => $value, ..., Port => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Quicksight::RedshiftParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->ClusterId

=head1 DESCRIPTION

Amazon Redshift parameters. The C<ClusterId> field can be blank if
C<Host> and C<Port> are both set. The C<Host> and C<Port> fields can be
blank if the C<ClusterId> field is set.

=head1 ATTRIBUTES


=head2 ClusterId => Str

  Cluster ID. This field can be blank if the C<Host> and C<Port> are
provided.


=head2 B<REQUIRED> Database => Str

  Database.


=head2 Host => Str

  Host. This field can be blank if C<ClusterId> is provided.


=head2 Port => Int

  Port. This field can be blank if the C<ClusterId> is provided.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

