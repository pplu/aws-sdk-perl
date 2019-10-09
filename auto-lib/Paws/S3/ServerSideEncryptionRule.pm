package Paws::S3::ServerSideEncryptionRule;
  use Moo;
  use Types::Standard qw//;
  use Paws::S3::Types qw/S3_ServerSideEncryptionByDefault/;
  has ApplyServerSideEncryptionByDefault => (is => 'ro', isa => S3_ServerSideEncryptionByDefault);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ApplyServerSideEncryptionByDefault' => {
                                                         'class' => 'Paws::S3::ServerSideEncryptionByDefault',
                                                         'type' => 'S3_ServerSideEncryptionByDefault'
                                                       }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ServerSideEncryptionRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::ServerSideEncryptionRule object:

  $service_obj->Method(Att1 => { ApplyServerSideEncryptionByDefault => $value, ..., ApplyServerSideEncryptionByDefault => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::ServerSideEncryptionRule object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplyServerSideEncryptionByDefault

=head1 DESCRIPTION

Specifies the default server-side encryption configuration.

=head1 ATTRIBUTES


=head2 ApplyServerSideEncryptionByDefault => S3_ServerSideEncryptionByDefault

  Specifies the default server-side encryption to apply to new objects in
the bucket. If a PUT Object request doesn't specify any server-side
encryption, this default encryption will be applied.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

